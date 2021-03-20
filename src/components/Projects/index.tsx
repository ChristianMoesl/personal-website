import React from 'react';
import { useStaticQuery, graphql } from 'gatsby';

import InfoBlock from 'components/ui/InfoBlock';
import Container from 'components/ui/Container';
import TitleSection from 'components/ui/TitleSection';
import { IconProps } from 'components/ui/Icon';

import { SectionTitle } from 'helpers/definitions';

import * as Styled from './styles';

interface Project {
  node: {
    id: string;
    frontmatter: {
      title: string;
      icon: IconProps;
      description: string;
    };
  };
}

const Projects: React.FC = () => {
  const { markdownRemark, allMarkdownRemark } = useStaticQuery(graphql`
    query {
      markdownRemark(frontmatter: { category: { eq: "projects section" } }) {
        frontmatter {
          title
          subtitle
        }
      }
      allMarkdownRemark(filter: { frontmatter: { category: { eq: "projects" } } }, sort: { fields: fileAbsolutePath }) {
        edges {
          node {
            id
            frontmatter {
              title
              icon
              description
            }
          }
        }
      }
    }
  `);

  const sectionTitle: SectionTitle = markdownRemark.frontmatter;
  const projects: Project[] = allMarkdownRemark.edges;

  return (
    <Container section>
      <TitleSection title={sectionTitle.title} subtitle={sectionTitle.subtitle} center />
      <Styled.Projects>
        {projects.map((item) => {
          const {
            id,
            frontmatter: { title, icon, description }
          } = item.node;

          return (
            <Styled.ProjectItem key={id}>
              <InfoBlock icon={icon} title={title} content={description} />
            </Styled.ProjectItem>
          );
        })}
      </Styled.Projects>
    </Container>
  );
};

export default Projects;
